# sandbox_telemetry_parse — 2026-10-16 00:50:46 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1137602 lines=2521
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2516 |
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
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 2516} |
| `chromeGpuPssKb` | {'int': 2516} |
| `chromeOtherPssKb` | {'int': 2516} |
| `chromeProcesses` | {'int': 2516} |
| `chromeProfiles` | {'int': 2516} |
| `chromeRendererMaxPssKb` | {'int': 2516} |
| `chromeRendererPssKb` | {'int': 2516} |
| `chromeRenderers` | {'int': 2516} |
| `chromeTabs` | {'int': 2516} |
| `chromeTabsProbedProfiles` | {'int': 2516} |
| `chromeUtilityPssKb` | {'int': 2516} |
| `desktopPssKb` | {'int': 2516} |
| `hostPssKb` | {'int': 2516} |
| `kind` | {'str': 2516} |
| `memAvailableKb` | {'int': 2516} |
| `memTotalKb` | {'int': 2516} |
| `otherPssKb` | {'int': 2516} |
| `processes` | {'int': 2516} |
| `pssFallbackProcesses` | {'int': 2516} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
