# sandbox_telemetry_parse — 2026-10-13 06:46:33 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=896223 lines=2173
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1852 |
| `chrome_profile_sample` | 313 |
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
| `chromeBrowserPssKb` | {'int': 1852} |
| `chromeGpuPssKb` | {'int': 1852} |
| `chromeOtherPssKb` | {'int': 1852} |
| `chromeProcesses` | {'int': 1852} |
| `chromeProfiles` | {'int': 1852} |
| `chromeRendererMaxPssKb` | {'int': 1852} |
| `chromeRendererPssKb` | {'int': 1852} |
| `chromeRenderers` | {'int': 1852} |
| `chromeTabs` | {'int': 1852} |
| `chromeTabsProbedProfiles` | {'int': 1852} |
| `chromeUtilityPssKb` | {'int': 1852} |
| `desktopPssKb` | {'int': 1852} |
| `hostPssKb` | {'int': 1852} |
| `kind` | {'str': 1852} |
| `memAvailableKb` | {'int': 1852} |
| `memTotalKb` | {'int': 1852} |
| `otherPssKb` | {'int': 1852} |
| `processes` | {'int': 1852} |
| `pssFallbackProcesses` | {'int': 1852} |

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
| `cpuMillicores` | {'int': 312} |
| `display` | {'int': 313} |
| `kind` | {'str': 313} |
| `processes` | {'int': 313} |
| `pssKb` | {'int': 313} |
| `rendererMaxPssKb` | {'int': 313} |
| `renderers` | {'int': 313} |
| `tabs` | {'int': 313} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
