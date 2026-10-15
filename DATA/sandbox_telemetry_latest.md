# sandbox_telemetry_parse — 2026-10-16 00:40:37 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1133986 lines=2513
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2508 |
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
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 2508} |
| `chromeGpuPssKb` | {'int': 2508} |
| `chromeOtherPssKb` | {'int': 2508} |
| `chromeProcesses` | {'int': 2508} |
| `chromeProfiles` | {'int': 2508} |
| `chromeRendererMaxPssKb` | {'int': 2508} |
| `chromeRendererPssKb` | {'int': 2508} |
| `chromeRenderers` | {'int': 2508} |
| `chromeTabs` | {'int': 2508} |
| `chromeTabsProbedProfiles` | {'int': 2508} |
| `chromeUtilityPssKb` | {'int': 2508} |
| `desktopPssKb` | {'int': 2508} |
| `hostPssKb` | {'int': 2508} |
| `kind` | {'str': 2508} |
| `memAvailableKb` | {'int': 2508} |
| `memTotalKb` | {'int': 2508} |
| `otherPssKb` | {'int': 2508} |
| `processes` | {'int': 2508} |
| `pssFallbackProcesses` | {'int': 2508} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
