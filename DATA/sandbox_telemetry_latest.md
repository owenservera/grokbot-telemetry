# sandbox_telemetry_parse — 2026-10-13 05:43:13 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=862493 lines=2069
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1800 |
| `chrome_profile_sample` | 261 |
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
| `chromeBrowserPssKb` | {'int': 1800} |
| `chromeGpuPssKb` | {'int': 1800} |
| `chromeOtherPssKb` | {'int': 1800} |
| `chromeProcesses` | {'int': 1800} |
| `chromeProfiles` | {'int': 1800} |
| `chromeRendererMaxPssKb` | {'int': 1800} |
| `chromeRendererPssKb` | {'int': 1800} |
| `chromeRenderers` | {'int': 1800} |
| `chromeTabs` | {'int': 1800} |
| `chromeTabsProbedProfiles` | {'int': 1800} |
| `chromeUtilityPssKb` | {'int': 1800} |
| `desktopPssKb` | {'int': 1800} |
| `hostPssKb` | {'int': 1800} |
| `kind` | {'str': 1800} |
| `memAvailableKb` | {'int': 1800} |
| `memTotalKb` | {'int': 1800} |
| `otherPssKb` | {'int': 1800} |
| `processes` | {'int': 1800} |
| `pssFallbackProcesses` | {'int': 1800} |

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
| `cpuMillicores` | {'int': 260} |
| `display` | {'int': 261} |
| `kind` | {'str': 261} |
| `processes` | {'int': 261} |
| `pssKb` | {'int': 261} |
| `rendererMaxPssKb` | {'int': 261} |
| `renderers` | {'int': 261} |
| `tabs` | {'int': 261} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
