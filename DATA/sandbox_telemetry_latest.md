# sandbox_telemetry_parse — 2026-10-27 01:41:31 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=252702 lines=562
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 557 |
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
| `chromeBrowserPssKb` | {'int': 557} |
| `chromeGpuPssKb` | {'int': 557} |
| `chromeOtherPssKb` | {'int': 557} |
| `chromeProcesses` | {'int': 557} |
| `chromeProfiles` | {'int': 557} |
| `chromeRendererMaxPssKb` | {'int': 557} |
| `chromeRendererPssKb` | {'int': 557} |
| `chromeRenderers` | {'int': 557} |
| `chromeTabs` | {'int': 557} |
| `chromeTabsProbedProfiles` | {'int': 557} |
| `chromeUtilityPssKb` | {'int': 557} |
| `desktopPssKb` | {'int': 557} |
| `hostPssKb` | {'int': 557} |
| `kind` | {'str': 557} |
| `memAvailableKb` | {'int': 557} |
| `memTotalKb` | {'int': 557} |
| `otherPssKb` | {'int': 557} |
| `processes` | {'int': 557} |
| `pssFallbackProcesses` | {'int': 557} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
