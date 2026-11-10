# sandbox_telemetry_parse — 2026-11-10 18:04:13 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1256701 lines=2785
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2776 |
| `egress_tunnel` | 5 |
| `boot_stage` | 3 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 2776} |
| `chromeGpuPssKb` | {'int': 2776} |
| `chromeOtherPssKb` | {'int': 2776} |
| `chromeProcesses` | {'int': 2776} |
| `chromeProfiles` | {'int': 2776} |
| `chromeRendererMaxPssKb` | {'int': 2776} |
| `chromeRendererPssKb` | {'int': 2776} |
| `chromeRenderers` | {'int': 2776} |
| `chromeTabs` | {'int': 2776} |
| `chromeTabsProbedProfiles` | {'int': 2776} |
| `chromeUtilityPssKb` | {'int': 2776} |
| `desktopPssKb` | {'int': 2776} |
| `hostPssKb` | {'int': 2776} |
| `kind` | {'str': 2776} |
| `memAvailableKb` | {'int': 2776} |
| `memTotalKb` | {'int': 2776} |
| `otherPssKb` | {'int': 2776} |
| `processes` | {'int': 2776} |
| `pssFallbackProcesses` | {'int': 2776} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
