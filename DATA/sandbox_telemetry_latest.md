# sandbox_telemetry_parse — 2026-11-12 07:56:32 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2034063 lines=4503
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4494 |
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
| `chromeBrowserPssKb` | {'int': 4494} |
| `chromeGpuPssKb` | {'int': 4494} |
| `chromeOtherPssKb` | {'int': 4494} |
| `chromeProcesses` | {'int': 4494} |
| `chromeProfiles` | {'int': 4494} |
| `chromeRendererMaxPssKb` | {'int': 4494} |
| `chromeRendererPssKb` | {'int': 4494} |
| `chromeRenderers` | {'int': 4494} |
| `chromeTabs` | {'int': 4494} |
| `chromeTabsProbedProfiles` | {'int': 4494} |
| `chromeUtilityPssKb` | {'int': 4494} |
| `desktopPssKb` | {'int': 4494} |
| `hostPssKb` | {'int': 4494} |
| `kind` | {'str': 4494} |
| `memAvailableKb` | {'int': 4494} |
| `memTotalKb` | {'int': 4494} |
| `otherPssKb` | {'int': 4494} |
| `processes` | {'int': 4494} |
| `pssFallbackProcesses` | {'int': 4494} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
