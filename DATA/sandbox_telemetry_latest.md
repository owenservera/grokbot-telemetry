# sandbox_telemetry_parse — 2026-10-16 11:24:08 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=398427 lines=1489
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 980 |
| `memory_sample` | 500 |
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
| `chromeBrowserPssKb` | {'int': 500} |
| `chromeGpuPssKb` | {'int': 500} |
| `chromeOtherPssKb` | {'int': 500} |
| `chromeProcesses` | {'int': 500} |
| `chromeProfiles` | {'int': 500} |
| `chromeRendererMaxPssKb` | {'int': 500} |
| `chromeRendererPssKb` | {'int': 500} |
| `chromeRenderers` | {'int': 500} |
| `chromeTabs` | {'int': 500} |
| `chromeTabsProbedProfiles` | {'int': 500} |
| `chromeUtilityPssKb` | {'int': 500} |
| `desktopPssKb` | {'int': 500} |
| `hostPssKb` | {'int': 500} |
| `kind` | {'str': 500} |
| `memAvailableKb` | {'int': 500} |
| `memTotalKb` | {'int': 500} |
| `otherPssKb` | {'int': 500} |
| `processes` | {'int': 500} |
| `pssFallbackProcesses` | {'int': 500} |

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
| `cpuMillicores` | {'int': 977} |
| `display` | {'int': 980} |
| `kind` | {'str': 980} |
| `processes` | {'int': 980} |
| `pssKb` | {'int': 980} |
| `rendererMaxPssKb` | {'int': 980} |
| `renderers` | {'int': 980} |
| `tabs` | {'int': 979} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
