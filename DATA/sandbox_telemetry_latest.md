# sandbox_telemetry_parse — 2026-10-27 02:47:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=278484 lines=619
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 614 |
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
| `chromeBrowserPssKb` | {'int': 614} |
| `chromeGpuPssKb` | {'int': 614} |
| `chromeOtherPssKb` | {'int': 614} |
| `chromeProcesses` | {'int': 614} |
| `chromeProfiles` | {'int': 614} |
| `chromeRendererMaxPssKb` | {'int': 614} |
| `chromeRendererPssKb` | {'int': 614} |
| `chromeRenderers` | {'int': 614} |
| `chromeTabs` | {'int': 614} |
| `chromeTabsProbedProfiles` | {'int': 614} |
| `chromeUtilityPssKb` | {'int': 614} |
| `desktopPssKb` | {'int': 614} |
| `hostPssKb` | {'int': 614} |
| `kind` | {'str': 614} |
| `memAvailableKb` | {'int': 614} |
| `memTotalKb` | {'int': 614} |
| `otherPssKb` | {'int': 614} |
| `processes` | {'int': 614} |
| `pssFallbackProcesses` | {'int': 614} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
