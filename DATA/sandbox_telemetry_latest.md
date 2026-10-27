# sandbox_telemetry_parse — 2026-10-27 08:03:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=405948 lines=901
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 896 |
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
| `chromeBrowserPssKb` | {'int': 896} |
| `chromeGpuPssKb` | {'int': 896} |
| `chromeOtherPssKb` | {'int': 896} |
| `chromeProcesses` | {'int': 896} |
| `chromeProfiles` | {'int': 896} |
| `chromeRendererMaxPssKb` | {'int': 896} |
| `chromeRendererPssKb` | {'int': 896} |
| `chromeRenderers` | {'int': 896} |
| `chromeTabs` | {'int': 896} |
| `chromeTabsProbedProfiles` | {'int': 896} |
| `chromeUtilityPssKb` | {'int': 896} |
| `desktopPssKb` | {'int': 896} |
| `hostPssKb` | {'int': 896} |
| `kind` | {'str': 896} |
| `memAvailableKb` | {'int': 896} |
| `memTotalKb` | {'int': 896} |
| `otherPssKb` | {'int': 896} |
| `processes` | {'int': 896} |
| `pssFallbackProcesses` | {'int': 896} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
