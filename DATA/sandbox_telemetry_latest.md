# sandbox_telemetry_parse — 2026-10-16 22:38:23 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=888112 lines=3319
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 2200 |
| `memory_sample` | 1110 |
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
| `chromeBrowserPssKb` | {'int': 1110} |
| `chromeGpuPssKb` | {'int': 1110} |
| `chromeOtherPssKb` | {'int': 1110} |
| `chromeProcesses` | {'int': 1110} |
| `chromeProfiles` | {'int': 1110} |
| `chromeRendererMaxPssKb` | {'int': 1110} |
| `chromeRendererPssKb` | {'int': 1110} |
| `chromeRenderers` | {'int': 1110} |
| `chromeTabs` | {'int': 1110} |
| `chromeTabsProbedProfiles` | {'int': 1110} |
| `chromeUtilityPssKb` | {'int': 1110} |
| `desktopPssKb` | {'int': 1110} |
| `hostPssKb` | {'int': 1110} |
| `kind` | {'str': 1110} |
| `memAvailableKb` | {'int': 1110} |
| `memTotalKb` | {'int': 1110} |
| `otherPssKb` | {'int': 1110} |
| `processes` | {'int': 1110} |
| `pssFallbackProcesses` | {'int': 1110} |

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
| `cpuMillicores` | {'int': 2197} |
| `display` | {'int': 2200} |
| `kind` | {'str': 2200} |
| `processes` | {'int': 2200} |
| `pssKb` | {'int': 2200} |
| `rendererMaxPssKb` | {'int': 2200} |
| `renderers` | {'int': 2200} |
| `tabs` | {'int': 2199} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
