# sandbox_telemetry_parse — 2026-10-07 04:14:35 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=796549 lines=1751
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1746 |
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
| `chromeBrowserPssKb` | {'int': 1746} |
| `chromeGpuPssKb` | {'int': 1746} |
| `chromeOtherPssKb` | {'int': 1746} |
| `chromeProcesses` | {'int': 1746} |
| `chromeProfiles` | {'int': 1746} |
| `chromeRendererMaxPssKb` | {'int': 1746} |
| `chromeRendererPssKb` | {'int': 1746} |
| `chromeRenderers` | {'int': 1746} |
| `chromeTabs` | {'int': 1746} |
| `chromeTabsProbedProfiles` | {'int': 1746} |
| `chromeUtilityPssKb` | {'int': 1746} |
| `desktopPssKb` | {'int': 1746} |
| `hostPssKb` | {'int': 1746} |
| `kind` | {'str': 1746} |
| `memAvailableKb` | {'int': 1746} |
| `memTotalKb` | {'int': 1746} |
| `otherPssKb` | {'int': 1746} |
| `processes` | {'int': 1746} |
| `pssFallbackProcesses` | {'int': 1746} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
