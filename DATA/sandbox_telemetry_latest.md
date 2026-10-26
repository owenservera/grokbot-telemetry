# sandbox_telemetry_parse — 2026-10-26 17:26:22 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=43416 lines=100
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 95 |
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
| `chromeBrowserPssKb` | {'int': 95} |
| `chromeGpuPssKb` | {'int': 95} |
| `chromeOtherPssKb` | {'int': 95} |
| `chromeProcesses` | {'int': 95} |
| `chromeProfiles` | {'int': 95} |
| `chromeRendererMaxPssKb` | {'int': 95} |
| `chromeRendererPssKb` | {'int': 95} |
| `chromeRenderers` | {'int': 95} |
| `chromeTabs` | {'int': 95} |
| `chromeTabsProbedProfiles` | {'int': 95} |
| `chromeUtilityPssKb` | {'int': 95} |
| `desktopPssKb` | {'int': 95} |
| `hostPssKb` | {'int': 95} |
| `kind` | {'str': 95} |
| `memAvailableKb` | {'int': 95} |
| `memTotalKb` | {'int': 95} |
| `otherPssKb` | {'int': 95} |
| `processes` | {'int': 95} |
| `pssFallbackProcesses` | {'int': 95} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
