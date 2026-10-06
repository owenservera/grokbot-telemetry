# sandbox_telemetry_parse — 2026-10-06 03:16:58 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=119666 lines=267
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 262 |
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
| `chromeBrowserPssKb` | {'int': 262} |
| `chromeGpuPssKb` | {'int': 262} |
| `chromeOtherPssKb` | {'int': 262} |
| `chromeProcesses` | {'int': 262} |
| `chromeProfiles` | {'int': 262} |
| `chromeRendererMaxPssKb` | {'int': 262} |
| `chromeRendererPssKb` | {'int': 262} |
| `chromeRenderers` | {'int': 262} |
| `chromeTabs` | {'int': 262} |
| `chromeTabsProbedProfiles` | {'int': 262} |
| `chromeUtilityPssKb` | {'int': 262} |
| `desktopPssKb` | {'int': 262} |
| `hostPssKb` | {'int': 262} |
| `kind` | {'str': 262} |
| `memAvailableKb` | {'int': 262} |
| `memTotalKb` | {'int': 262} |
| `otherPssKb` | {'int': 262} |
| `processes` | {'int': 262} |
| `pssFallbackProcesses` | {'int': 262} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
