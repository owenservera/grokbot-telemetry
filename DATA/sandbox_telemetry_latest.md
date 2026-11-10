# sandbox_telemetry_parse — 2026-11-10 07:16:11 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1033505 lines=2292
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2283 |
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
| `chromeBrowserPssKb` | {'int': 2283} |
| `chromeGpuPssKb` | {'int': 2283} |
| `chromeOtherPssKb` | {'int': 2283} |
| `chromeProcesses` | {'int': 2283} |
| `chromeProfiles` | {'int': 2283} |
| `chromeRendererMaxPssKb` | {'int': 2283} |
| `chromeRendererPssKb` | {'int': 2283} |
| `chromeRenderers` | {'int': 2283} |
| `chromeTabs` | {'int': 2283} |
| `chromeTabsProbedProfiles` | {'int': 2283} |
| `chromeUtilityPssKb` | {'int': 2283} |
| `desktopPssKb` | {'int': 2283} |
| `hostPssKb` | {'int': 2283} |
| `kind` | {'str': 2283} |
| `memAvailableKb` | {'int': 2283} |
| `memTotalKb` | {'int': 2283} |
| `otherPssKb` | {'int': 2283} |
| `processes` | {'int': 2283} |
| `pssFallbackProcesses` | {'int': 2283} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
