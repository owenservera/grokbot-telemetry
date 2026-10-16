# sandbox_telemetry_parse — 2026-10-16 03:33:40 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=47134 lines=175
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 104 |
| `memory_sample` | 62 |
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
| `chromeBrowserPssKb` | {'int': 62} |
| `chromeGpuPssKb` | {'int': 62} |
| `chromeOtherPssKb` | {'int': 62} |
| `chromeProcesses` | {'int': 62} |
| `chromeProfiles` | {'int': 62} |
| `chromeRendererMaxPssKb` | {'int': 62} |
| `chromeRendererPssKb` | {'int': 62} |
| `chromeRenderers` | {'int': 62} |
| `chromeTabs` | {'int': 62} |
| `chromeTabsProbedProfiles` | {'int': 62} |
| `chromeUtilityPssKb` | {'int': 62} |
| `desktopPssKb` | {'int': 62} |
| `hostPssKb` | {'int': 62} |
| `kind` | {'str': 62} |
| `memAvailableKb` | {'int': 62} |
| `memTotalKb` | {'int': 62} |
| `otherPssKb` | {'int': 62} |
| `processes` | {'int': 62} |
| `pssFallbackProcesses` | {'int': 62} |

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
| `cpuMillicores` | {'int': 101} |
| `display` | {'int': 104} |
| `kind` | {'str': 104} |
| `processes` | {'int': 104} |
| `pssKb` | {'int': 104} |
| `rendererMaxPssKb` | {'int': 104} |
| `renderers` | {'int': 104} |
| `tabs` | {'int': 103} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
