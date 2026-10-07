# sandbox_telemetry_parse — 2026-10-07 13:47:46 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1054645 lines=2317
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2312 |
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
| `chromeBrowserPssKb` | {'int': 2312} |
| `chromeGpuPssKb` | {'int': 2312} |
| `chromeOtherPssKb` | {'int': 2312} |
| `chromeProcesses` | {'int': 2312} |
| `chromeProfiles` | {'int': 2312} |
| `chromeRendererMaxPssKb` | {'int': 2312} |
| `chromeRendererPssKb` | {'int': 2312} |
| `chromeRenderers` | {'int': 2312} |
| `chromeTabs` | {'int': 2312} |
| `chromeTabsProbedProfiles` | {'int': 2312} |
| `chromeUtilityPssKb` | {'int': 2312} |
| `desktopPssKb` | {'int': 2312} |
| `hostPssKb` | {'int': 2312} |
| `kind` | {'str': 2312} |
| `memAvailableKb` | {'int': 2312} |
| `memTotalKb` | {'int': 2312} |
| `otherPssKb` | {'int': 2312} |
| `processes` | {'int': 2312} |
| `pssFallbackProcesses` | {'int': 2312} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
