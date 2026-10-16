# sandbox_telemetry_parse — 2026-10-16 13:44:35 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=499553 lines=1867
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1232 |
| `memory_sample` | 626 |
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
| `chromeBrowserPssKb` | {'int': 626} |
| `chromeGpuPssKb` | {'int': 626} |
| `chromeOtherPssKb` | {'int': 626} |
| `chromeProcesses` | {'int': 626} |
| `chromeProfiles` | {'int': 626} |
| `chromeRendererMaxPssKb` | {'int': 626} |
| `chromeRendererPssKb` | {'int': 626} |
| `chromeRenderers` | {'int': 626} |
| `chromeTabs` | {'int': 626} |
| `chromeTabsProbedProfiles` | {'int': 626} |
| `chromeUtilityPssKb` | {'int': 626} |
| `desktopPssKb` | {'int': 626} |
| `hostPssKb` | {'int': 626} |
| `kind` | {'str': 626} |
| `memAvailableKb` | {'int': 626} |
| `memTotalKb` | {'int': 626} |
| `otherPssKb` | {'int': 626} |
| `processes` | {'int': 626} |
| `pssFallbackProcesses` | {'int': 626} |

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
| `cpuMillicores` | {'int': 1229} |
| `display` | {'int': 1232} |
| `kind` | {'str': 1232} |
| `processes` | {'int': 1232} |
| `pssKb` | {'int': 1232} |
| `rendererMaxPssKb` | {'int': 1232} |
| `renderers` | {'int': 1232} |
| `tabs` | {'int': 1231} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
