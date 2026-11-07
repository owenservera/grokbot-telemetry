# sandbox_telemetry_parse — 2026-11-07 05:29:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=327745 lines=732
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 723 |
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
| `chromeBrowserPssKb` | {'int': 723} |
| `chromeGpuPssKb` | {'int': 723} |
| `chromeOtherPssKb` | {'int': 723} |
| `chromeProcesses` | {'int': 723} |
| `chromeProfiles` | {'int': 723} |
| `chromeRendererMaxPssKb` | {'int': 723} |
| `chromeRendererPssKb` | {'int': 723} |
| `chromeRenderers` | {'int': 723} |
| `chromeTabs` | {'int': 723} |
| `chromeTabsProbedProfiles` | {'int': 723} |
| `chromeUtilityPssKb` | {'int': 723} |
| `desktopPssKb` | {'int': 723} |
| `hostPssKb` | {'int': 723} |
| `kind` | {'str': 723} |
| `memAvailableKb` | {'int': 723} |
| `memTotalKb` | {'int': 723} |
| `otherPssKb` | {'int': 723} |
| `processes` | {'int': 723} |
| `pssFallbackProcesses` | {'int': 723} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
