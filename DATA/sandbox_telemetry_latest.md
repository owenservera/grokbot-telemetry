# sandbox_telemetry_parse — 2026-11-18 22:46:05 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1010043 lines=2241
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2232 |
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
| `chromeBrowserPssKb` | {'int': 2232} |
| `chromeGpuPssKb` | {'int': 2232} |
| `chromeOtherPssKb` | {'int': 2232} |
| `chromeProcesses` | {'int': 2232} |
| `chromeProfiles` | {'int': 2232} |
| `chromeRendererMaxPssKb` | {'int': 2232} |
| `chromeRendererPssKb` | {'int': 2232} |
| `chromeRenderers` | {'int': 2232} |
| `chromeTabs` | {'int': 2232} |
| `chromeTabsProbedProfiles` | {'int': 2232} |
| `chromeUtilityPssKb` | {'int': 2232} |
| `desktopPssKb` | {'int': 2232} |
| `hostPssKb` | {'int': 2232} |
| `kind` | {'str': 2232} |
| `memAvailableKb` | {'int': 2232} |
| `memTotalKb` | {'int': 2232} |
| `otherPssKb` | {'int': 2232} |
| `processes` | {'int': 2232} |
| `pssFallbackProcesses` | {'int': 2232} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
