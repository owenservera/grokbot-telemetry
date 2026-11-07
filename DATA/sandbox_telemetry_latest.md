# sandbox_telemetry_parse — 2026-11-07 04:50:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=317798 lines=710
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 701 |
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
| `chromeBrowserPssKb` | {'int': 701} |
| `chromeGpuPssKb` | {'int': 701} |
| `chromeOtherPssKb` | {'int': 701} |
| `chromeProcesses` | {'int': 701} |
| `chromeProfiles` | {'int': 701} |
| `chromeRendererMaxPssKb` | {'int': 701} |
| `chromeRendererPssKb` | {'int': 701} |
| `chromeRenderers` | {'int': 701} |
| `chromeTabs` | {'int': 701} |
| `chromeTabsProbedProfiles` | {'int': 701} |
| `chromeUtilityPssKb` | {'int': 701} |
| `desktopPssKb` | {'int': 701} |
| `hostPssKb` | {'int': 701} |
| `kind` | {'str': 701} |
| `memAvailableKb` | {'int': 701} |
| `memTotalKb` | {'int': 701} |
| `otherPssKb` | {'int': 701} |
| `processes` | {'int': 701} |
| `pssFallbackProcesses` | {'int': 701} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
