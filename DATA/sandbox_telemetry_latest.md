# sandbox_telemetry_parse — 2026-11-10 20:38:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1310108 lines=2903
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2894 |
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
| `chromeBrowserPssKb` | {'int': 2894} |
| `chromeGpuPssKb` | {'int': 2894} |
| `chromeOtherPssKb` | {'int': 2894} |
| `chromeProcesses` | {'int': 2894} |
| `chromeProfiles` | {'int': 2894} |
| `chromeRendererMaxPssKb` | {'int': 2894} |
| `chromeRendererPssKb` | {'int': 2894} |
| `chromeRenderers` | {'int': 2894} |
| `chromeTabs` | {'int': 2894} |
| `chromeTabsProbedProfiles` | {'int': 2894} |
| `chromeUtilityPssKb` | {'int': 2894} |
| `desktopPssKb` | {'int': 2894} |
| `hostPssKb` | {'int': 2894} |
| `kind` | {'str': 2894} |
| `memAvailableKb` | {'int': 2894} |
| `memTotalKb` | {'int': 2894} |
| `otherPssKb` | {'int': 2894} |
| `processes` | {'int': 2894} |
| `pssFallbackProcesses` | {'int': 2894} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
