# sandbox_telemetry_parse — 2026-11-26 02:24:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3031933 lines=6716
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6701 |
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
| `chromeBrowserPssKb` | {'int': 6701} |
| `chromeGpuPssKb` | {'int': 6701} |
| `chromeOtherPssKb` | {'int': 6701} |
| `chromeProcesses` | {'int': 6701} |
| `chromeProfiles` | {'int': 6701} |
| `chromeRendererMaxPssKb` | {'int': 6701} |
| `chromeRendererPssKb` | {'int': 6701} |
| `chromeRenderers` | {'int': 6701} |
| `chromeTabs` | {'int': 6701} |
| `chromeTabsProbedProfiles` | {'int': 6701} |
| `chromeUtilityPssKb` | {'int': 6701} |
| `desktopPssKb` | {'int': 6701} |
| `hostPssKb` | {'int': 6701} |
| `kind` | {'str': 6701} |
| `memAvailableKb` | {'int': 6701} |
| `memTotalKb` | {'int': 6701} |
| `otherPssKb` | {'int': 6701} |
| `processes` | {'int': 6701} |
| `pssFallbackProcesses` | {'int': 6701} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
