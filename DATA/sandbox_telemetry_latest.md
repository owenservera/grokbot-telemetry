# sandbox_telemetry_parse — 2026-10-15 16:45:36 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=955898 lines=2119
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2114 |
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
| `chromeBrowserPssKb` | {'int': 2114} |
| `chromeGpuPssKb` | {'int': 2114} |
| `chromeOtherPssKb` | {'int': 2114} |
| `chromeProcesses` | {'int': 2114} |
| `chromeProfiles` | {'int': 2114} |
| `chromeRendererMaxPssKb` | {'int': 2114} |
| `chromeRendererPssKb` | {'int': 2114} |
| `chromeRenderers` | {'int': 2114} |
| `chromeTabs` | {'int': 2114} |
| `chromeTabsProbedProfiles` | {'int': 2114} |
| `chromeUtilityPssKb` | {'int': 2114} |
| `desktopPssKb` | {'int': 2114} |
| `hostPssKb` | {'int': 2114} |
| `kind` | {'str': 2114} |
| `memAvailableKb` | {'int': 2114} |
| `memTotalKb` | {'int': 2114} |
| `otherPssKb` | {'int': 2114} |
| `processes` | {'int': 2114} |
| `pssFallbackProcesses` | {'int': 2114} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
