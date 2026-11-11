# sandbox_telemetry_parse — 2026-11-11 14:39:25 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1675181 lines=3710
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3701 |
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
| `chromeBrowserPssKb` | {'int': 3701} |
| `chromeGpuPssKb` | {'int': 3701} |
| `chromeOtherPssKb` | {'int': 3701} |
| `chromeProcesses` | {'int': 3701} |
| `chromeProfiles` | {'int': 3701} |
| `chromeRendererMaxPssKb` | {'int': 3701} |
| `chromeRendererPssKb` | {'int': 3701} |
| `chromeRenderers` | {'int': 3701} |
| `chromeTabs` | {'int': 3701} |
| `chromeTabsProbedProfiles` | {'int': 3701} |
| `chromeUtilityPssKb` | {'int': 3701} |
| `desktopPssKb` | {'int': 3701} |
| `hostPssKb` | {'int': 3701} |
| `kind` | {'str': 3701} |
| `memAvailableKb` | {'int': 3701} |
| `memTotalKb` | {'int': 3701} |
| `otherPssKb` | {'int': 3701} |
| `processes` | {'int': 3701} |
| `pssFallbackProcesses` | {'int': 3701} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
