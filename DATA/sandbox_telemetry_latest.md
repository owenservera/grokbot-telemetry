# sandbox_telemetry_parse — 2026-11-12 16:31:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2222392 lines=4919
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4910 |
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
| `chromeBrowserPssKb` | {'int': 4910} |
| `chromeGpuPssKb` | {'int': 4910} |
| `chromeOtherPssKb` | {'int': 4910} |
| `chromeProcesses` | {'int': 4910} |
| `chromeProfiles` | {'int': 4910} |
| `chromeRendererMaxPssKb` | {'int': 4910} |
| `chromeRendererPssKb` | {'int': 4910} |
| `chromeRenderers` | {'int': 4910} |
| `chromeTabs` | {'int': 4910} |
| `chromeTabsProbedProfiles` | {'int': 4910} |
| `chromeUtilityPssKb` | {'int': 4910} |
| `desktopPssKb` | {'int': 4910} |
| `hostPssKb` | {'int': 4910} |
| `kind` | {'str': 4910} |
| `memAvailableKb` | {'int': 4910} |
| `memTotalKb` | {'int': 4910} |
| `otherPssKb` | {'int': 4910} |
| `processes` | {'int': 4910} |
| `pssFallbackProcesses` | {'int': 4910} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
