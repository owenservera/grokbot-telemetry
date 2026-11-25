# sandbox_telemetry_parse — 2026-11-25 08:16:09 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2666973 lines=5909
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5894 |
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
| `chromeBrowserPssKb` | {'int': 5894} |
| `chromeGpuPssKb` | {'int': 5894} |
| `chromeOtherPssKb` | {'int': 5894} |
| `chromeProcesses` | {'int': 5894} |
| `chromeProfiles` | {'int': 5894} |
| `chromeRendererMaxPssKb` | {'int': 5894} |
| `chromeRendererPssKb` | {'int': 5894} |
| `chromeRenderers` | {'int': 5894} |
| `chromeTabs` | {'int': 5894} |
| `chromeTabsProbedProfiles` | {'int': 5894} |
| `chromeUtilityPssKb` | {'int': 5894} |
| `desktopPssKb` | {'int': 5894} |
| `hostPssKb` | {'int': 5894} |
| `kind` | {'str': 5894} |
| `memAvailableKb` | {'int': 5894} |
| `memTotalKb` | {'int': 5894} |
| `otherPssKb` | {'int': 5894} |
| `processes` | {'int': 5894} |
| `pssFallbackProcesses` | {'int': 5894} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
