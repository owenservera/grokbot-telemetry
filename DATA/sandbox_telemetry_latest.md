# sandbox_telemetry_parse — 2026-10-13 05:04:46 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=839592 lines=1997
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1764 |
| `chrome_profile_sample` | 225 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |

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
| `chromeBrowserPssKb` | {'int': 1764} |
| `chromeGpuPssKb` | {'int': 1764} |
| `chromeOtherPssKb` | {'int': 1764} |
| `chromeProcesses` | {'int': 1764} |
| `chromeProfiles` | {'int': 1764} |
| `chromeRendererMaxPssKb` | {'int': 1764} |
| `chromeRendererPssKb` | {'int': 1764} |
| `chromeRenderers` | {'int': 1764} |
| `chromeTabs` | {'int': 1764} |
| `chromeTabsProbedProfiles` | {'int': 1764} |
| `chromeUtilityPssKb` | {'int': 1764} |
| `desktopPssKb` | {'int': 1764} |
| `hostPssKb` | {'int': 1764} |
| `kind` | {'str': 1764} |
| `memAvailableKb` | {'int': 1764} |
| `memTotalKb` | {'int': 1764} |
| `otherPssKb` | {'int': 1764} |
| `processes` | {'int': 1764} |
| `pssFallbackProcesses` | {'int': 1764} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `display` | {'int': 1} |
| `durationMs` | {'int': 1} |
| `kind` | {'str': 1} |
| `launcher` | {'int': 1} |
| `launcherSource` | {'str': 1} |
| `mode` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `cpuMillicores` | {'int': 224} |
| `display` | {'int': 225} |
| `kind` | {'str': 225} |
| `processes` | {'int': 225} |
| `pssKb` | {'int': 225} |
| `rendererMaxPssKb` | {'int': 225} |
| `renderers` | {'int': 225} |
| `tabs` | {'int': 225} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
