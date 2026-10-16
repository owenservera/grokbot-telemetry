# sandbox_telemetry_parse — 2026-10-16 10:29:40 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=360749 lines=1348
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 886 |
| `memory_sample` | 453 |
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
| `chromeBrowserPssKb` | {'int': 453} |
| `chromeGpuPssKb` | {'int': 453} |
| `chromeOtherPssKb` | {'int': 453} |
| `chromeProcesses` | {'int': 453} |
| `chromeProfiles` | {'int': 453} |
| `chromeRendererMaxPssKb` | {'int': 453} |
| `chromeRendererPssKb` | {'int': 453} |
| `chromeRenderers` | {'int': 453} |
| `chromeTabs` | {'int': 453} |
| `chromeTabsProbedProfiles` | {'int': 453} |
| `chromeUtilityPssKb` | {'int': 453} |
| `desktopPssKb` | {'int': 453} |
| `hostPssKb` | {'int': 453} |
| `kind` | {'str': 453} |
| `memAvailableKb` | {'int': 453} |
| `memTotalKb` | {'int': 453} |
| `otherPssKb` | {'int': 453} |
| `processes` | {'int': 453} |
| `pssFallbackProcesses` | {'int': 453} |

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
| `cpuMillicores` | {'int': 883} |
| `display` | {'int': 886} |
| `kind` | {'str': 886} |
| `processes` | {'int': 886} |
| `pssKb` | {'int': 886} |
| `rendererMaxPssKb` | {'int': 886} |
| `renderers` | {'int': 886} |
| `tabs` | {'int': 885} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
