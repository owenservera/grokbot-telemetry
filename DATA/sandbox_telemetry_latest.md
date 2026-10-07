# sandbox_telemetry_parse — 2026-10-07 04:35:19 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=805669 lines=1771
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1766 |
| `boot_stage` | 3 |
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
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 1766} |
| `chromeGpuPssKb` | {'int': 1766} |
| `chromeOtherPssKb` | {'int': 1766} |
| `chromeProcesses` | {'int': 1766} |
| `chromeProfiles` | {'int': 1766} |
| `chromeRendererMaxPssKb` | {'int': 1766} |
| `chromeRendererPssKb` | {'int': 1766} |
| `chromeRenderers` | {'int': 1766} |
| `chromeTabs` | {'int': 1766} |
| `chromeTabsProbedProfiles` | {'int': 1766} |
| `chromeUtilityPssKb` | {'int': 1766} |
| `desktopPssKb` | {'int': 1766} |
| `hostPssKb` | {'int': 1766} |
| `kind` | {'str': 1766} |
| `memAvailableKb` | {'int': 1766} |
| `memTotalKb` | {'int': 1766} |
| `otherPssKb` | {'int': 1766} |
| `processes` | {'int': 1766} |
| `pssFallbackProcesses` | {'int': 1766} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
