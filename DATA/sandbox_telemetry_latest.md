# sandbox_telemetry_parse — 2026-10-13 11:31:16 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1045152 lines=2643
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2087 |
| `chrome_profile_sample` | 548 |
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
| `chromeBrowserPssKb` | {'int': 2087} |
| `chromeGpuPssKb` | {'int': 2087} |
| `chromeOtherPssKb` | {'int': 2087} |
| `chromeProcesses` | {'int': 2087} |
| `chromeProfiles` | {'int': 2087} |
| `chromeRendererMaxPssKb` | {'int': 2087} |
| `chromeRendererPssKb` | {'int': 2087} |
| `chromeRenderers` | {'int': 2087} |
| `chromeTabs` | {'int': 2087} |
| `chromeTabsProbedProfiles` | {'int': 2087} |
| `chromeUtilityPssKb` | {'int': 2087} |
| `desktopPssKb` | {'int': 2087} |
| `hostPssKb` | {'int': 2087} |
| `kind` | {'str': 2087} |
| `memAvailableKb` | {'int': 2087} |
| `memTotalKb` | {'int': 2087} |
| `otherPssKb` | {'int': 2087} |
| `processes` | {'int': 2087} |
| `pssFallbackProcesses` | {'int': 2087} |

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
| `cpuMillicores` | {'int': 547} |
| `display` | {'int': 548} |
| `kind` | {'str': 548} |
| `processes` | {'int': 548} |
| `pssKb` | {'int': 548} |
| `rendererMaxPssKb` | {'int': 548} |
| `renderers` | {'int': 548} |
| `tabs` | {'int': 548} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
