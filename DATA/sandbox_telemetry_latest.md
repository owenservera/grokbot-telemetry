# sandbox_telemetry_parse — 2026-11-12 11:26:15 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2106913 lines=4664
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4655 |
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
| `chromeBrowserPssKb` | {'int': 4655} |
| `chromeGpuPssKb` | {'int': 4655} |
| `chromeOtherPssKb` | {'int': 4655} |
| `chromeProcesses` | {'int': 4655} |
| `chromeProfiles` | {'int': 4655} |
| `chromeRendererMaxPssKb` | {'int': 4655} |
| `chromeRendererPssKb` | {'int': 4655} |
| `chromeRenderers` | {'int': 4655} |
| `chromeTabs` | {'int': 4655} |
| `chromeTabsProbedProfiles` | {'int': 4655} |
| `chromeUtilityPssKb` | {'int': 4655} |
| `desktopPssKb` | {'int': 4655} |
| `hostPssKb` | {'int': 4655} |
| `kind` | {'str': 4655} |
| `memAvailableKb` | {'int': 4655} |
| `memTotalKb` | {'int': 4655} |
| `otherPssKb` | {'int': 4655} |
| `processes` | {'int': 4655} |
| `pssFallbackProcesses` | {'int': 4655} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
