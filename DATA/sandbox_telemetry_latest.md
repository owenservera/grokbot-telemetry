# sandbox_telemetry_parse — 2026-11-19 12:51:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1280006 lines=2838
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2829 |
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
| `chromeBrowserPssKb` | {'int': 2829} |
| `chromeGpuPssKb` | {'int': 2829} |
| `chromeOtherPssKb` | {'int': 2829} |
| `chromeProcesses` | {'int': 2829} |
| `chromeProfiles` | {'int': 2829} |
| `chromeRendererMaxPssKb` | {'int': 2829} |
| `chromeRendererPssKb` | {'int': 2829} |
| `chromeRenderers` | {'int': 2829} |
| `chromeTabs` | {'int': 2829} |
| `chromeTabsProbedProfiles` | {'int': 2829} |
| `chromeUtilityPssKb` | {'int': 2829} |
| `desktopPssKb` | {'int': 2829} |
| `hostPssKb` | {'int': 2829} |
| `kind` | {'str': 2829} |
| `memAvailableKb` | {'int': 2829} |
| `memTotalKb` | {'int': 2829} |
| `otherPssKb` | {'int': 2829} |
| `processes` | {'int': 2829} |
| `pssFallbackProcesses` | {'int': 2829} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
