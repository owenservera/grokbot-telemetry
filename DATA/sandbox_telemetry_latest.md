# sandbox_telemetry_parse — 2026-10-16 13:32:06 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=489917 lines=1831
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1208 |
| `memory_sample` | 614 |
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
| `chromeBrowserPssKb` | {'int': 614} |
| `chromeGpuPssKb` | {'int': 614} |
| `chromeOtherPssKb` | {'int': 614} |
| `chromeProcesses` | {'int': 614} |
| `chromeProfiles` | {'int': 614} |
| `chromeRendererMaxPssKb` | {'int': 614} |
| `chromeRendererPssKb` | {'int': 614} |
| `chromeRenderers` | {'int': 614} |
| `chromeTabs` | {'int': 614} |
| `chromeTabsProbedProfiles` | {'int': 614} |
| `chromeUtilityPssKb` | {'int': 614} |
| `desktopPssKb` | {'int': 614} |
| `hostPssKb` | {'int': 614} |
| `kind` | {'str': 614} |
| `memAvailableKb` | {'int': 614} |
| `memTotalKb` | {'int': 614} |
| `otherPssKb` | {'int': 614} |
| `processes` | {'int': 614} |
| `pssFallbackProcesses` | {'int': 614} |

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
| `cpuMillicores` | {'int': 1205} |
| `display` | {'int': 1208} |
| `kind` | {'str': 1208} |
| `processes` | {'int': 1208} |
| `pssKb` | {'int': 1208} |
| `rendererMaxPssKb` | {'int': 1208} |
| `renderers` | {'int': 1208} |
| `tabs` | {'int': 1207} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
