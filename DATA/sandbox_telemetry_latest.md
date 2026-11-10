# sandbox_telemetry_parse — 2026-11-10 16:38:54 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1222726 lines=2710
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2701 |
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
| `chromeBrowserPssKb` | {'int': 2701} |
| `chromeGpuPssKb` | {'int': 2701} |
| `chromeOtherPssKb` | {'int': 2701} |
| `chromeProcesses` | {'int': 2701} |
| `chromeProfiles` | {'int': 2701} |
| `chromeRendererMaxPssKb` | {'int': 2701} |
| `chromeRendererPssKb` | {'int': 2701} |
| `chromeRenderers` | {'int': 2701} |
| `chromeTabs` | {'int': 2701} |
| `chromeTabsProbedProfiles` | {'int': 2701} |
| `chromeUtilityPssKb` | {'int': 2701} |
| `desktopPssKb` | {'int': 2701} |
| `hostPssKb` | {'int': 2701} |
| `kind` | {'str': 2701} |
| `memAvailableKb` | {'int': 2701} |
| `memTotalKb` | {'int': 2701} |
| `otherPssKb` | {'int': 2701} |
| `processes` | {'int': 2701} |
| `pssFallbackProcesses` | {'int': 2701} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
