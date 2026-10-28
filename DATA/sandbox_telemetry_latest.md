# sandbox_telemetry_parse — 2026-10-28 21:51:41 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2253 lines=10
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4 |
| `boot_stage` | 3 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `egress_tunnel_desktop` | 1 |

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
| `chromeBrowserPssKb` | {'int': 4} |
| `chromeGpuPssKb` | {'int': 4} |
| `chromeOtherPssKb` | {'int': 4} |
| `chromeProcesses` | {'int': 4} |
| `chromeProfiles` | {'int': 4} |
| `chromeRendererMaxPssKb` | {'int': 4} |
| `chromeRendererPssKb` | {'int': 4} |
| `chromeRenderers` | {'int': 4} |
| `chromeTabs` | {'int': 4} |
| `chromeTabsProbedProfiles` | {'int': 4} |
| `chromeUtilityPssKb` | {'int': 4} |
| `desktopPssKb` | {'int': 4} |
| `hostPssKb` | {'int': 4} |
| `kind` | {'str': 4} |
| `memAvailableKb` | {'int': 4} |
| `memTotalKb` | {'int': 4} |
| `otherPssKb` | {'int': 4} |
| `processes` | {'int': 4} |
| `pssFallbackProcesses` | {'int': 4} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 1} |
| `kind` | {'str': 1} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
