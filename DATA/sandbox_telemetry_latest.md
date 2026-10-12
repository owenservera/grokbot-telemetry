# sandbox_telemetry_parse — 2026-10-12 23:52:21 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=705264 lines=1575
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1553 |
| `chrome_profile_sample` | 14 |
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
| `chromeBrowserPssKb` | {'int': 1553} |
| `chromeGpuPssKb` | {'int': 1553} |
| `chromeOtherPssKb` | {'int': 1553} |
| `chromeProcesses` | {'int': 1553} |
| `chromeProfiles` | {'int': 1553} |
| `chromeRendererMaxPssKb` | {'int': 1553} |
| `chromeRendererPssKb` | {'int': 1553} |
| `chromeRenderers` | {'int': 1553} |
| `chromeTabs` | {'int': 1553} |
| `chromeTabsProbedProfiles` | {'int': 1553} |
| `chromeUtilityPssKb` | {'int': 1553} |
| `desktopPssKb` | {'int': 1553} |
| `hostPssKb` | {'int': 1553} |
| `kind` | {'str': 1553} |
| `memAvailableKb` | {'int': 1553} |
| `memTotalKb` | {'int': 1553} |
| `otherPssKb` | {'int': 1553} |
| `processes` | {'int': 1553} |
| `pssFallbackProcesses` | {'int': 1553} |

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
| `cpuMillicores` | {'int': 13} |
| `display` | {'int': 14} |
| `kind` | {'str': 14} |
| `processes` | {'int': 14} |
| `pssKb` | {'int': 14} |
| `rendererMaxPssKb` | {'int': 14} |
| `renderers` | {'int': 14} |
| `tabs` | {'int': 14} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
