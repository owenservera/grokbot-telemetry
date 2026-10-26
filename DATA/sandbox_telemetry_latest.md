# sandbox_telemetry_parse — 2026-10-26 16:09:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=11254 lines=29
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 24 |
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
| `chromeBrowserPssKb` | {'int': 24} |
| `chromeGpuPssKb` | {'int': 24} |
| `chromeOtherPssKb` | {'int': 24} |
| `chromeProcesses` | {'int': 24} |
| `chromeProfiles` | {'int': 24} |
| `chromeRendererMaxPssKb` | {'int': 24} |
| `chromeRendererPssKb` | {'int': 24} |
| `chromeRenderers` | {'int': 24} |
| `chromeTabs` | {'int': 24} |
| `chromeTabsProbedProfiles` | {'int': 24} |
| `chromeUtilityPssKb` | {'int': 24} |
| `desktopPssKb` | {'int': 24} |
| `hostPssKb` | {'int': 24} |
| `kind` | {'str': 24} |
| `memAvailableKb` | {'int': 24} |
| `memTotalKb` | {'int': 24} |
| `otherPssKb` | {'int': 24} |
| `processes` | {'int': 24} |
| `pssFallbackProcesses` | {'int': 24} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
