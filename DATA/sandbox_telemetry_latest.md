# sandbox_telemetry_parse — 2026-11-12 16:12:50 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2215144 lines=4903
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4894 |
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
| `chromeBrowserPssKb` | {'int': 4894} |
| `chromeGpuPssKb` | {'int': 4894} |
| `chromeOtherPssKb` | {'int': 4894} |
| `chromeProcesses` | {'int': 4894} |
| `chromeProfiles` | {'int': 4894} |
| `chromeRendererMaxPssKb` | {'int': 4894} |
| `chromeRendererPssKb` | {'int': 4894} |
| `chromeRenderers` | {'int': 4894} |
| `chromeTabs` | {'int': 4894} |
| `chromeTabsProbedProfiles` | {'int': 4894} |
| `chromeUtilityPssKb` | {'int': 4894} |
| `desktopPssKb` | {'int': 4894} |
| `hostPssKb` | {'int': 4894} |
| `kind` | {'str': 4894} |
| `memAvailableKb` | {'int': 4894} |
| `memTotalKb` | {'int': 4894} |
| `otherPssKb` | {'int': 4894} |
| `processes` | {'int': 4894} |
| `pssFallbackProcesses` | {'int': 4894} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
