# sandbox_telemetry_parse — 2026-10-13 04:04:40 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=806482 lines=1893
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1712 |
| `chrome_profile_sample` | 173 |
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
| `chromeBrowserPssKb` | {'int': 1712} |
| `chromeGpuPssKb` | {'int': 1712} |
| `chromeOtherPssKb` | {'int': 1712} |
| `chromeProcesses` | {'int': 1712} |
| `chromeProfiles` | {'int': 1712} |
| `chromeRendererMaxPssKb` | {'int': 1712} |
| `chromeRendererPssKb` | {'int': 1712} |
| `chromeRenderers` | {'int': 1712} |
| `chromeTabs` | {'int': 1712} |
| `chromeTabsProbedProfiles` | {'int': 1712} |
| `chromeUtilityPssKb` | {'int': 1712} |
| `desktopPssKb` | {'int': 1712} |
| `hostPssKb` | {'int': 1712} |
| `kind` | {'str': 1712} |
| `memAvailableKb` | {'int': 1712} |
| `memTotalKb` | {'int': 1712} |
| `otherPssKb` | {'int': 1712} |
| `processes` | {'int': 1712} |
| `pssFallbackProcesses` | {'int': 1712} |

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
| `cpuMillicores` | {'int': 172} |
| `display` | {'int': 173} |
| `kind` | {'str': 173} |
| `processes` | {'int': 173} |
| `pssKb` | {'int': 173} |
| `rendererMaxPssKb` | {'int': 173} |
| `renderers` | {'int': 173} |
| `tabs` | {'int': 173} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
