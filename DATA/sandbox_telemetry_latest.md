# sandbox_telemetry_parse — 2026-11-24 08:03:29 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2198786 lines=4874
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4859 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 4859} |
| `chromeGpuPssKb` | {'int': 4859} |
| `chromeOtherPssKb` | {'int': 4859} |
| `chromeProcesses` | {'int': 4859} |
| `chromeProfiles` | {'int': 4859} |
| `chromeRendererMaxPssKb` | {'int': 4859} |
| `chromeRendererPssKb` | {'int': 4859} |
| `chromeRenderers` | {'int': 4859} |
| `chromeTabs` | {'int': 4859} |
| `chromeTabsProbedProfiles` | {'int': 4859} |
| `chromeUtilityPssKb` | {'int': 4859} |
| `desktopPssKb` | {'int': 4859} |
| `hostPssKb` | {'int': 4859} |
| `kind` | {'str': 4859} |
| `memAvailableKb` | {'int': 4859} |
| `memTotalKb` | {'int': 4859} |
| `otherPssKb` | {'int': 4859} |
| `processes` | {'int': 4859} |
| `pssFallbackProcesses` | {'int': 4859} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
