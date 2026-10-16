# sandbox_telemetry_parse — 2026-10-16 08:59:38 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=301324 lines=1126
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 738 |
| `memory_sample` | 379 |
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
| `chromeBrowserPssKb` | {'int': 379} |
| `chromeGpuPssKb` | {'int': 379} |
| `chromeOtherPssKb` | {'int': 379} |
| `chromeProcesses` | {'int': 379} |
| `chromeProfiles` | {'int': 379} |
| `chromeRendererMaxPssKb` | {'int': 379} |
| `chromeRendererPssKb` | {'int': 379} |
| `chromeRenderers` | {'int': 379} |
| `chromeTabs` | {'int': 379} |
| `chromeTabsProbedProfiles` | {'int': 379} |
| `chromeUtilityPssKb` | {'int': 379} |
| `desktopPssKb` | {'int': 379} |
| `hostPssKb` | {'int': 379} |
| `kind` | {'str': 379} |
| `memAvailableKb` | {'int': 379} |
| `memTotalKb` | {'int': 379} |
| `otherPssKb` | {'int': 379} |
| `processes` | {'int': 379} |
| `pssFallbackProcesses` | {'int': 379} |

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
| `cpuMillicores` | {'int': 735} |
| `display` | {'int': 738} |
| `kind` | {'str': 738} |
| `processes` | {'int': 738} |
| `pssKb` | {'int': 738} |
| `rendererMaxPssKb` | {'int': 738} |
| `renderers` | {'int': 738} |
| `tabs` | {'int': 737} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
