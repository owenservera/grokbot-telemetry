# sandbox_telemetry_parse — 2026-10-07 06:39:10 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=859933 lines=1890
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1885 |
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
| `chromeBrowserPssKb` | {'int': 1885} |
| `chromeGpuPssKb` | {'int': 1885} |
| `chromeOtherPssKb` | {'int': 1885} |
| `chromeProcesses` | {'int': 1885} |
| `chromeProfiles` | {'int': 1885} |
| `chromeRendererMaxPssKb` | {'int': 1885} |
| `chromeRendererPssKb` | {'int': 1885} |
| `chromeRenderers` | {'int': 1885} |
| `chromeTabs` | {'int': 1885} |
| `chromeTabsProbedProfiles` | {'int': 1885} |
| `chromeUtilityPssKb` | {'int': 1885} |
| `desktopPssKb` | {'int': 1885} |
| `hostPssKb` | {'int': 1885} |
| `kind` | {'str': 1885} |
| `memAvailableKb` | {'int': 1885} |
| `memTotalKb` | {'int': 1885} |
| `otherPssKb` | {'int': 1885} |
| `processes` | {'int': 1885} |
| `pssFallbackProcesses` | {'int': 1885} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
