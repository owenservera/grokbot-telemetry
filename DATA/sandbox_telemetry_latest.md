# sandbox_telemetry_parse — 2026-11-24 01:57:11 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2083028 lines=4618
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4603 |
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
| `chromeBrowserPssKb` | {'int': 4603} |
| `chromeGpuPssKb` | {'int': 4603} |
| `chromeOtherPssKb` | {'int': 4603} |
| `chromeProcesses` | {'int': 4603} |
| `chromeProfiles` | {'int': 4603} |
| `chromeRendererMaxPssKb` | {'int': 4603} |
| `chromeRendererPssKb` | {'int': 4603} |
| `chromeRenderers` | {'int': 4603} |
| `chromeTabs` | {'int': 4603} |
| `chromeTabsProbedProfiles` | {'int': 4603} |
| `chromeUtilityPssKb` | {'int': 4603} |
| `desktopPssKb` | {'int': 4603} |
| `hostPssKb` | {'int': 4603} |
| `kind` | {'str': 4603} |
| `memAvailableKb` | {'int': 4603} |
| `memTotalKb` | {'int': 4603} |
| `otherPssKb` | {'int': 4603} |
| `processes` | {'int': 4603} |
| `pssFallbackProcesses` | {'int': 4603} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
