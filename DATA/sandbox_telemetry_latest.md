# sandbox_telemetry_parse — 2026-11-12 21:03:36 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2328830 lines=5154
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5145 |
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
| `chromeBrowserPssKb` | {'int': 5145} |
| `chromeGpuPssKb` | {'int': 5145} |
| `chromeOtherPssKb` | {'int': 5145} |
| `chromeProcesses` | {'int': 5145} |
| `chromeProfiles` | {'int': 5145} |
| `chromeRendererMaxPssKb` | {'int': 5145} |
| `chromeRendererPssKb` | {'int': 5145} |
| `chromeRenderers` | {'int': 5145} |
| `chromeTabs` | {'int': 5145} |
| `chromeTabsProbedProfiles` | {'int': 5145} |
| `chromeUtilityPssKb` | {'int': 5145} |
| `desktopPssKb` | {'int': 5145} |
| `hostPssKb` | {'int': 5145} |
| `kind` | {'str': 5145} |
| `memAvailableKb` | {'int': 5145} |
| `memTotalKb` | {'int': 5145} |
| `otherPssKb` | {'int': 5145} |
| `processes` | {'int': 5145} |
| `pssFallbackProcesses` | {'int': 5145} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
