# sandbox_telemetry_parse — 2026-11-07 09:42:22 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=405077 lines=903
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 894 |
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
| `chromeBrowserPssKb` | {'int': 894} |
| `chromeGpuPssKb` | {'int': 894} |
| `chromeOtherPssKb` | {'int': 894} |
| `chromeProcesses` | {'int': 894} |
| `chromeProfiles` | {'int': 894} |
| `chromeRendererMaxPssKb` | {'int': 894} |
| `chromeRendererPssKb` | {'int': 894} |
| `chromeRenderers` | {'int': 894} |
| `chromeTabs` | {'int': 894} |
| `chromeTabsProbedProfiles` | {'int': 894} |
| `chromeUtilityPssKb` | {'int': 894} |
| `desktopPssKb` | {'int': 894} |
| `hostPssKb` | {'int': 894} |
| `kind` | {'str': 894} |
| `memAvailableKb` | {'int': 894} |
| `memTotalKb` | {'int': 894} |
| `otherPssKb` | {'int': 894} |
| `processes` | {'int': 894} |
| `pssFallbackProcesses` | {'int': 894} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
