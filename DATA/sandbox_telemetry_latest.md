# sandbox_telemetry_parse — 2026-10-16 09:41:07 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=329431 lines=1231
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 808 |
| `memory_sample` | 414 |
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
| `chromeBrowserPssKb` | {'int': 414} |
| `chromeGpuPssKb` | {'int': 414} |
| `chromeOtherPssKb` | {'int': 414} |
| `chromeProcesses` | {'int': 414} |
| `chromeProfiles` | {'int': 414} |
| `chromeRendererMaxPssKb` | {'int': 414} |
| `chromeRendererPssKb` | {'int': 414} |
| `chromeRenderers` | {'int': 414} |
| `chromeTabs` | {'int': 414} |
| `chromeTabsProbedProfiles` | {'int': 414} |
| `chromeUtilityPssKb` | {'int': 414} |
| `desktopPssKb` | {'int': 414} |
| `hostPssKb` | {'int': 414} |
| `kind` | {'str': 414} |
| `memAvailableKb` | {'int': 414} |
| `memTotalKb` | {'int': 414} |
| `otherPssKb` | {'int': 414} |
| `processes` | {'int': 414} |
| `pssFallbackProcesses` | {'int': 414} |

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
| `cpuMillicores` | {'int': 805} |
| `display` | {'int': 808} |
| `kind` | {'str': 808} |
| `processes` | {'int': 808} |
| `pssKb` | {'int': 808} |
| `rendererMaxPssKb` | {'int': 808} |
| `renderers` | {'int': 808} |
| `tabs` | {'int': 807} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
