# sandbox_telemetry_parse — 2026-10-13 21:07:56 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1223946 lines=3203
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2367 |
| `chrome_profile_sample` | 828 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 2367} |
| `chromeGpuPssKb` | {'int': 2367} |
| `chromeOtherPssKb` | {'int': 2367} |
| `chromeProcesses` | {'int': 2367} |
| `chromeProfiles` | {'int': 2367} |
| `chromeRendererMaxPssKb` | {'int': 2367} |
| `chromeRendererPssKb` | {'int': 2367} |
| `chromeRenderers` | {'int': 2367} |
| `chromeTabs` | {'int': 2367} |
| `chromeTabsProbedProfiles` | {'int': 2367} |
| `chromeUtilityPssKb` | {'int': 2367} |
| `desktopPssKb` | {'int': 2367} |
| `hostPssKb` | {'int': 2367} |
| `kind` | {'str': 2367} |
| `memAvailableKb` | {'int': 2367} |
| `memTotalKb` | {'int': 2367} |
| `otherPssKb` | {'int': 2367} |
| `processes` | {'int': 2367} |
| `pssFallbackProcesses` | {'int': 2367} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `display` | {'int': 1} |
| `durationMs` | {'int': 1} |
| `kind` | {'str': 1} |
| `launcher` | {'int': 1} |
| `launcherSource` | {'str': 1} |
| `mode` | {'str': 1} |
| `outcome` | {'str': 1} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 827} |
| `display` | {'int': 828} |
| `kind` | {'str': 828} |
| `processes` | {'int': 828} |
| `pssKb` | {'int': 828} |
| `rendererMaxPssKb` | {'int': 828} |
| `renderers` | {'int': 828} |
| `tabs` | {'int': 828} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
