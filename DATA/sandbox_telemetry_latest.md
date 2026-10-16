# sandbox_telemetry_parse — 2026-10-16 06:13:29 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=173738 lines=649
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 420 |
| `memory_sample` | 220 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |

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
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 220} |
| `chromeGpuPssKb` | {'int': 220} |
| `chromeOtherPssKb` | {'int': 220} |
| `chromeProcesses` | {'int': 220} |
| `chromeProfiles` | {'int': 220} |
| `chromeRendererMaxPssKb` | {'int': 220} |
| `chromeRendererPssKb` | {'int': 220} |
| `chromeRenderers` | {'int': 220} |
| `chromeTabs` | {'int': 220} |
| `chromeTabsProbedProfiles` | {'int': 220} |
| `chromeUtilityPssKb` | {'int': 220} |
| `desktopPssKb` | {'int': 220} |
| `hostPssKb` | {'int': 220} |
| `kind` | {'str': 220} |
| `memAvailableKb` | {'int': 220} |
| `memTotalKb` | {'int': 220} |
| `otherPssKb` | {'int': 220} |
| `processes` | {'int': 220} |
| `pssFallbackProcesses` | {'int': 220} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

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
| `cpuMillicores` | {'int': 417} |
| `display` | {'int': 420} |
| `kind` | {'str': 420} |
| `processes` | {'int': 420} |
| `pssKb` | {'int': 420} |
| `rendererMaxPssKb` | {'int': 420} |
| `renderers` | {'int': 420} |
| `tabs` | {'int': 419} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
