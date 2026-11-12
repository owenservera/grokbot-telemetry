# sandbox_telemetry_parse — 2026-11-12 07:22:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2022297 lines=4477
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4468 |
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
| `chromeBrowserPssKb` | {'int': 4468} |
| `chromeGpuPssKb` | {'int': 4468} |
| `chromeOtherPssKb` | {'int': 4468} |
| `chromeProcesses` | {'int': 4468} |
| `chromeProfiles` | {'int': 4468} |
| `chromeRendererMaxPssKb` | {'int': 4468} |
| `chromeRendererPssKb` | {'int': 4468} |
| `chromeRenderers` | {'int': 4468} |
| `chromeTabs` | {'int': 4468} |
| `chromeTabsProbedProfiles` | {'int': 4468} |
| `chromeUtilityPssKb` | {'int': 4468} |
| `desktopPssKb` | {'int': 4468} |
| `hostPssKb` | {'int': 4468} |
| `kind` | {'str': 4468} |
| `memAvailableKb` | {'int': 4468} |
| `memTotalKb` | {'int': 4468} |
| `otherPssKb` | {'int': 4468} |
| `processes` | {'int': 4468} |
| `pssFallbackProcesses` | {'int': 4468} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
