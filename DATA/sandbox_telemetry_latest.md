# sandbox_telemetry_parse — 2026-11-10 06:06:25 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1012711 lines=2246
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2237 |
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
| `chromeBrowserPssKb` | {'int': 2237} |
| `chromeGpuPssKb` | {'int': 2237} |
| `chromeOtherPssKb` | {'int': 2237} |
| `chromeProcesses` | {'int': 2237} |
| `chromeProfiles` | {'int': 2237} |
| `chromeRendererMaxPssKb` | {'int': 2237} |
| `chromeRendererPssKb` | {'int': 2237} |
| `chromeRenderers` | {'int': 2237} |
| `chromeTabs` | {'int': 2237} |
| `chromeTabsProbedProfiles` | {'int': 2237} |
| `chromeUtilityPssKb` | {'int': 2237} |
| `desktopPssKb` | {'int': 2237} |
| `hostPssKb` | {'int': 2237} |
| `kind` | {'str': 2237} |
| `memAvailableKb` | {'int': 2237} |
| `memTotalKb` | {'int': 2237} |
| `otherPssKb` | {'int': 2237} |
| `processes` | {'int': 2237} |
| `pssFallbackProcesses` | {'int': 2237} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
