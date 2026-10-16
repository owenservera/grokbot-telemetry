# sandbox_telemetry_parse — 2026-10-16 18:31:19 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=721078 lines=2695
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1784 |
| `memory_sample` | 902 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `cookie_persist` | 2 |
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
| `chromeBrowserPssKb` | {'int': 902} |
| `chromeGpuPssKb` | {'int': 902} |
| `chromeOtherPssKb` | {'int': 902} |
| `chromeProcesses` | {'int': 902} |
| `chromeProfiles` | {'int': 902} |
| `chromeRendererMaxPssKb` | {'int': 902} |
| `chromeRendererPssKb` | {'int': 902} |
| `chromeRenderers` | {'int': 902} |
| `chromeTabs` | {'int': 902} |
| `chromeTabsProbedProfiles` | {'int': 902} |
| `chromeUtilityPssKb` | {'int': 902} |
| `desktopPssKb` | {'int': 902} |
| `hostPssKb` | {'int': 902} |
| `kind` | {'str': 902} |
| `memAvailableKb` | {'int': 902} |
| `memTotalKb` | {'int': 902} |
| `otherPssKb` | {'int': 902} |
| `processes` | {'int': 902} |
| `pssFallbackProcesses` | {'int': 902} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 1781} |
| `display` | {'int': 1784} |
| `kind` | {'str': 1784} |
| `processes` | {'int': 1784} |
| `pssKb` | {'int': 1784} |
| `rendererMaxPssKb` | {'int': 1784} |
| `renderers` | {'int': 1784} |
| `tabs` | {'int': 1783} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
