# sandbox_telemetry_parse — 2026-10-26 15:56:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=7178 lines=20
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 15 |
| `boot_stage` | 3 |
| `egress_tunnel` | 1 |
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
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `chromeBrowserPssKb` | {'int': 15} |
| `chromeGpuPssKb` | {'int': 15} |
| `chromeOtherPssKb` | {'int': 15} |
| `chromeProcesses` | {'int': 15} |
| `chromeProfiles` | {'int': 15} |
| `chromeRendererMaxPssKb` | {'int': 15} |
| `chromeRendererPssKb` | {'int': 15} |
| `chromeRenderers` | {'int': 15} |
| `chromeTabs` | {'int': 15} |
| `chromeTabsProbedProfiles` | {'int': 15} |
| `chromeUtilityPssKb` | {'int': 15} |
| `desktopPssKb` | {'int': 15} |
| `hostPssKb` | {'int': 15} |
| `kind` | {'str': 15} |
| `memAvailableKb` | {'int': 15} |
| `memTotalKb` | {'int': 15} |
| `otherPssKb` | {'int': 15} |
| `processes` | {'int': 15} |
| `pssFallbackProcesses` | {'int': 15} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
