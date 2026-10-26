# sandbox_telemetry_parse — 2026-10-26 20:10:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=116349 lines=261
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 256 |
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
| `chromeBrowserPssKb` | {'int': 256} |
| `chromeGpuPssKb` | {'int': 256} |
| `chromeOtherPssKb` | {'int': 256} |
| `chromeProcesses` | {'int': 256} |
| `chromeProfiles` | {'int': 256} |
| `chromeRendererMaxPssKb` | {'int': 256} |
| `chromeRendererPssKb` | {'int': 256} |
| `chromeRenderers` | {'int': 256} |
| `chromeTabs` | {'int': 256} |
| `chromeTabsProbedProfiles` | {'int': 256} |
| `chromeUtilityPssKb` | {'int': 256} |
| `desktopPssKb` | {'int': 256} |
| `hostPssKb` | {'int': 256} |
| `kind` | {'str': 256} |
| `memAvailableKb` | {'int': 256} |
| `memTotalKb` | {'int': 256} |
| `otherPssKb` | {'int': 256} |
| `processes` | {'int': 256} |
| `pssFallbackProcesses` | {'int': 256} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
