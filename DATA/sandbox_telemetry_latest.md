# sandbox_telemetry_parse — 2026-11-18 18:16:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=923202 lines=2049
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2040 |
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
| `chromeBrowserPssKb` | {'int': 2040} |
| `chromeGpuPssKb` | {'int': 2040} |
| `chromeOtherPssKb` | {'int': 2040} |
| `chromeProcesses` | {'int': 2040} |
| `chromeProfiles` | {'int': 2040} |
| `chromeRendererMaxPssKb` | {'int': 2040} |
| `chromeRendererPssKb` | {'int': 2040} |
| `chromeRenderers` | {'int': 2040} |
| `chromeTabs` | {'int': 2040} |
| `chromeTabsProbedProfiles` | {'int': 2040} |
| `chromeUtilityPssKb` | {'int': 2040} |
| `desktopPssKb` | {'int': 2040} |
| `hostPssKb` | {'int': 2040} |
| `kind` | {'str': 2040} |
| `memAvailableKb` | {'int': 2040} |
| `memTotalKb` | {'int': 2040} |
| `otherPssKb` | {'int': 2040} |
| `processes` | {'int': 2040} |
| `pssFallbackProcesses` | {'int': 2040} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
