# sandbox_telemetry_parse — 2026-11-12 12:27:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2129091 lines=4713
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4704 |
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
| `chromeBrowserPssKb` | {'int': 4704} |
| `chromeGpuPssKb` | {'int': 4704} |
| `chromeOtherPssKb` | {'int': 4704} |
| `chromeProcesses` | {'int': 4704} |
| `chromeProfiles` | {'int': 4704} |
| `chromeRendererMaxPssKb` | {'int': 4704} |
| `chromeRendererPssKb` | {'int': 4704} |
| `chromeRenderers` | {'int': 4704} |
| `chromeTabs` | {'int': 4704} |
| `chromeTabsProbedProfiles` | {'int': 4704} |
| `chromeUtilityPssKb` | {'int': 4704} |
| `desktopPssKb` | {'int': 4704} |
| `hostPssKb` | {'int': 4704} |
| `kind` | {'str': 4704} |
| `memAvailableKb` | {'int': 4704} |
| `memTotalKb` | {'int': 4704} |
| `otherPssKb` | {'int': 4704} |
| `processes` | {'int': 4704} |
| `pssFallbackProcesses` | {'int': 4704} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
