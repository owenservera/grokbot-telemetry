# sandbox_telemetry_parse — 2026-11-10 16:44:38 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1224085 lines=2713
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2704 |
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
| `chromeBrowserPssKb` | {'int': 2704} |
| `chromeGpuPssKb` | {'int': 2704} |
| `chromeOtherPssKb` | {'int': 2704} |
| `chromeProcesses` | {'int': 2704} |
| `chromeProfiles` | {'int': 2704} |
| `chromeRendererMaxPssKb` | {'int': 2704} |
| `chromeRendererPssKb` | {'int': 2704} |
| `chromeRenderers` | {'int': 2704} |
| `chromeTabs` | {'int': 2704} |
| `chromeTabsProbedProfiles` | {'int': 2704} |
| `chromeUtilityPssKb` | {'int': 2704} |
| `desktopPssKb` | {'int': 2704} |
| `hostPssKb` | {'int': 2704} |
| `kind` | {'str': 2704} |
| `memAvailableKb` | {'int': 2704} |
| `memTotalKb` | {'int': 2704} |
| `otherPssKb` | {'int': 2704} |
| `processes` | {'int': 2704} |
| `pssFallbackProcesses` | {'int': 2704} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
