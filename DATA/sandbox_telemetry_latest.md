# sandbox_telemetry_parse — 2026-11-23 18:51:34 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1949986 lines=4324
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4309 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 4309} |
| `chromeGpuPssKb` | {'int': 4309} |
| `chromeOtherPssKb` | {'int': 4309} |
| `chromeProcesses` | {'int': 4309} |
| `chromeProfiles` | {'int': 4309} |
| `chromeRendererMaxPssKb` | {'int': 4309} |
| `chromeRendererPssKb` | {'int': 4309} |
| `chromeRenderers` | {'int': 4309} |
| `chromeTabs` | {'int': 4309} |
| `chromeTabsProbedProfiles` | {'int': 4309} |
| `chromeUtilityPssKb` | {'int': 4309} |
| `desktopPssKb` | {'int': 4309} |
| `hostPssKb` | {'int': 4309} |
| `kind` | {'str': 4309} |
| `memAvailableKb` | {'int': 4309} |
| `memTotalKb` | {'int': 4309} |
| `otherPssKb` | {'int': 4309} |
| `processes` | {'int': 4309} |
| `pssFallbackProcesses` | {'int': 4309} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
