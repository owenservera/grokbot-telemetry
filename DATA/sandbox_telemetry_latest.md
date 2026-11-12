# sandbox_telemetry_parse — 2026-11-12 22:26:36 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2352348 lines=5206
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5197 |
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
| `chromeBrowserPssKb` | {'int': 5197} |
| `chromeGpuPssKb` | {'int': 5197} |
| `chromeOtherPssKb` | {'int': 5197} |
| `chromeProcesses` | {'int': 5197} |
| `chromeProfiles` | {'int': 5197} |
| `chromeRendererMaxPssKb` | {'int': 5197} |
| `chromeRendererPssKb` | {'int': 5197} |
| `chromeRenderers` | {'int': 5197} |
| `chromeTabs` | {'int': 5197} |
| `chromeTabsProbedProfiles` | {'int': 5197} |
| `chromeUtilityPssKb` | {'int': 5197} |
| `desktopPssKb` | {'int': 5197} |
| `hostPssKb` | {'int': 5197} |
| `kind` | {'str': 5197} |
| `memAvailableKb` | {'int': 5197} |
| `memTotalKb` | {'int': 5197} |
| `otherPssKb` | {'int': 5197} |
| `processes` | {'int': 5197} |
| `pssFallbackProcesses` | {'int': 5197} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
