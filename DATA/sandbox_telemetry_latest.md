# sandbox_telemetry_parse — 2026-11-11 05:01:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1479742 lines=3278
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3269 |
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
| `chromeBrowserPssKb` | {'int': 3269} |
| `chromeGpuPssKb` | {'int': 3269} |
| `chromeOtherPssKb` | {'int': 3269} |
| `chromeProcesses` | {'int': 3269} |
| `chromeProfiles` | {'int': 3269} |
| `chromeRendererMaxPssKb` | {'int': 3269} |
| `chromeRendererPssKb` | {'int': 3269} |
| `chromeRenderers` | {'int': 3269} |
| `chromeTabs` | {'int': 3269} |
| `chromeTabsProbedProfiles` | {'int': 3269} |
| `chromeUtilityPssKb` | {'int': 3269} |
| `desktopPssKb` | {'int': 3269} |
| `hostPssKb` | {'int': 3269} |
| `kind` | {'str': 3269} |
| `memAvailableKb` | {'int': 3269} |
| `memTotalKb` | {'int': 3269} |
| `otherPssKb` | {'int': 3269} |
| `processes` | {'int': 3269} |
| `pssFallbackProcesses` | {'int': 3269} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
