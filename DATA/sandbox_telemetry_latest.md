# sandbox_telemetry_parse — 2026-11-09 16:56:09 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=751203 lines=1668
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1659 |
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
| `chromeBrowserPssKb` | {'int': 1659} |
| `chromeGpuPssKb` | {'int': 1659} |
| `chromeOtherPssKb` | {'int': 1659} |
| `chromeProcesses` | {'int': 1659} |
| `chromeProfiles` | {'int': 1659} |
| `chromeRendererMaxPssKb` | {'int': 1659} |
| `chromeRendererPssKb` | {'int': 1659} |
| `chromeRenderers` | {'int': 1659} |
| `chromeTabs` | {'int': 1659} |
| `chromeTabsProbedProfiles` | {'int': 1659} |
| `chromeUtilityPssKb` | {'int': 1659} |
| `desktopPssKb` | {'int': 1659} |
| `hostPssKb` | {'int': 1659} |
| `kind` | {'str': 1659} |
| `memAvailableKb` | {'int': 1659} |
| `memTotalKb` | {'int': 1659} |
| `otherPssKb` | {'int': 1659} |
| `processes` | {'int': 1659} |
| `pssFallbackProcesses` | {'int': 1659} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
